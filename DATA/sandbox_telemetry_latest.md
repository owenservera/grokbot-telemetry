# sandbox_telemetry_parse — 2026-11-07 00:58:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=242269 lines=543
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 534 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 534} |
| `chromeGpuPssKb` | {'int': 534} |
| `chromeOtherPssKb` | {'int': 534} |
| `chromeProcesses` | {'int': 534} |
| `chromeProfiles` | {'int': 534} |
| `chromeRendererMaxPssKb` | {'int': 534} |
| `chromeRendererPssKb` | {'int': 534} |
| `chromeRenderers` | {'int': 534} |
| `chromeTabs` | {'int': 534} |
| `chromeTabsProbedProfiles` | {'int': 534} |
| `chromeUtilityPssKb` | {'int': 534} |
| `desktopPssKb` | {'int': 534} |
| `hostPssKb` | {'int': 534} |
| `kind` | {'str': 534} |
| `memAvailableKb` | {'int': 534} |
| `memTotalKb` | {'int': 534} |
| `otherPssKb` | {'int': 534} |
| `processes` | {'int': 534} |
| `pssFallbackProcesses` | {'int': 534} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

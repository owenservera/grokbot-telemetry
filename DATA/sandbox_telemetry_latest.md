# sandbox_telemetry_parse — 2026-11-07 00:35:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=235938 lines=529
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 520 |
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
| `chromeBrowserPssKb` | {'int': 520} |
| `chromeGpuPssKb` | {'int': 520} |
| `chromeOtherPssKb` | {'int': 520} |
| `chromeProcesses` | {'int': 520} |
| `chromeProfiles` | {'int': 520} |
| `chromeRendererMaxPssKb` | {'int': 520} |
| `chromeRendererPssKb` | {'int': 520} |
| `chromeRenderers` | {'int': 520} |
| `chromeTabs` | {'int': 520} |
| `chromeTabsProbedProfiles` | {'int': 520} |
| `chromeUtilityPssKb` | {'int': 520} |
| `desktopPssKb` | {'int': 520} |
| `hostPssKb` | {'int': 520} |
| `kind` | {'str': 520} |
| `memAvailableKb` | {'int': 520} |
| `memTotalKb` | {'int': 520} |
| `otherPssKb` | {'int': 520} |
| `processes` | {'int': 520} |
| `pssFallbackProcesses` | {'int': 520} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

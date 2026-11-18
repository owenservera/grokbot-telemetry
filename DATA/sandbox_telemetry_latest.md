# sandbox_telemetry_parse — 2026-11-18 02:03:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=629971 lines=1399
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1392 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1392} |
| `chromeGpuPssKb` | {'int': 1392} |
| `chromeOtherPssKb` | {'int': 1392} |
| `chromeProcesses` | {'int': 1392} |
| `chromeProfiles` | {'int': 1392} |
| `chromeRendererMaxPssKb` | {'int': 1392} |
| `chromeRendererPssKb` | {'int': 1392} |
| `chromeRenderers` | {'int': 1392} |
| `chromeTabs` | {'int': 1392} |
| `chromeTabsProbedProfiles` | {'int': 1392} |
| `chromeUtilityPssKb` | {'int': 1392} |
| `desktopPssKb` | {'int': 1392} |
| `hostPssKb` | {'int': 1392} |
| `kind` | {'str': 1392} |
| `memAvailableKb` | {'int': 1392} |
| `memTotalKb` | {'int': 1392} |
| `otherPssKb` | {'int': 1392} |
| `processes` | {'int': 1392} |
| `pssFallbackProcesses` | {'int': 1392} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-11-23 17:16:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1921479 lines=4261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4246 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4246} |
| `chromeGpuPssKb` | {'int': 4246} |
| `chromeOtherPssKb` | {'int': 4246} |
| `chromeProcesses` | {'int': 4246} |
| `chromeProfiles` | {'int': 4246} |
| `chromeRendererMaxPssKb` | {'int': 4246} |
| `chromeRendererPssKb` | {'int': 4246} |
| `chromeRenderers` | {'int': 4246} |
| `chromeTabs` | {'int': 4246} |
| `chromeTabsProbedProfiles` | {'int': 4246} |
| `chromeUtilityPssKb` | {'int': 4246} |
| `desktopPssKb` | {'int': 4246} |
| `hostPssKb` | {'int': 4246} |
| `kind` | {'str': 4246} |
| `memAvailableKb` | {'int': 4246} |
| `memTotalKb` | {'int': 4246} |
| `otherPssKb` | {'int': 4246} |
| `processes` | {'int': 4246} |
| `pssFallbackProcesses` | {'int': 4246} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

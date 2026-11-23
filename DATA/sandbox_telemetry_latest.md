# sandbox_telemetry_parse — 2026-11-23 18:46:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1948627 lines=4321
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4306 |
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
| `chromeBrowserPssKb` | {'int': 4306} |
| `chromeGpuPssKb` | {'int': 4306} |
| `chromeOtherPssKb` | {'int': 4306} |
| `chromeProcesses` | {'int': 4306} |
| `chromeProfiles` | {'int': 4306} |
| `chromeRendererMaxPssKb` | {'int': 4306} |
| `chromeRendererPssKb` | {'int': 4306} |
| `chromeRenderers` | {'int': 4306} |
| `chromeTabs` | {'int': 4306} |
| `chromeTabsProbedProfiles` | {'int': 4306} |
| `chromeUtilityPssKb` | {'int': 4306} |
| `desktopPssKb` | {'int': 4306} |
| `hostPssKb` | {'int': 4306} |
| `kind` | {'str': 4306} |
| `memAvailableKb` | {'int': 4306} |
| `memTotalKb` | {'int': 4306} |
| `otherPssKb` | {'int': 4306} |
| `processes` | {'int': 4306} |
| `pssFallbackProcesses` | {'int': 4306} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

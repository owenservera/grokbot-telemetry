# sandbox_telemetry_parse — 2026-11-25 11:16:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2734377 lines=6058
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6043 |
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
| `chromeBrowserPssKb` | {'int': 6043} |
| `chromeGpuPssKb` | {'int': 6043} |
| `chromeOtherPssKb` | {'int': 6043} |
| `chromeProcesses` | {'int': 6043} |
| `chromeProfiles` | {'int': 6043} |
| `chromeRendererMaxPssKb` | {'int': 6043} |
| `chromeRendererPssKb` | {'int': 6043} |
| `chromeRenderers` | {'int': 6043} |
| `chromeTabs` | {'int': 6043} |
| `chromeTabsProbedProfiles` | {'int': 6043} |
| `chromeUtilityPssKb` | {'int': 6043} |
| `desktopPssKb` | {'int': 6043} |
| `hostPssKb` | {'int': 6043} |
| `kind` | {'str': 6043} |
| `memAvailableKb` | {'int': 6043} |
| `memTotalKb` | {'int': 6043} |
| `otherPssKb` | {'int': 6043} |
| `processes` | {'int': 6043} |
| `pssFallbackProcesses` | {'int': 6043} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

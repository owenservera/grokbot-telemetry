# sandbox_telemetry_parse — 2026-11-20 11:32:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1695840 lines=3759
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3748 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3748} |
| `chromeGpuPssKb` | {'int': 3748} |
| `chromeOtherPssKb` | {'int': 3748} |
| `chromeProcesses` | {'int': 3748} |
| `chromeProfiles` | {'int': 3748} |
| `chromeRendererMaxPssKb` | {'int': 3748} |
| `chromeRendererPssKb` | {'int': 3748} |
| `chromeRenderers` | {'int': 3748} |
| `chromeTabs` | {'int': 3748} |
| `chromeTabsProbedProfiles` | {'int': 3748} |
| `chromeUtilityPssKb` | {'int': 3748} |
| `desktopPssKb` | {'int': 3748} |
| `hostPssKb` | {'int': 3748} |
| `kind` | {'str': 3748} |
| `memAvailableKb` | {'int': 3748} |
| `memTotalKb` | {'int': 3748} |
| `otherPssKb` | {'int': 3748} |
| `processes` | {'int': 3748} |
| `pssFallbackProcesses` | {'int': 3748} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

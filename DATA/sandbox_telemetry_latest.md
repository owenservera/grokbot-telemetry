# sandbox_telemetry_parse — 2026-11-12 12:09:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2122756 lines=4699
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4690 |
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
| `chromeBrowserPssKb` | {'int': 4690} |
| `chromeGpuPssKb` | {'int': 4690} |
| `chromeOtherPssKb` | {'int': 4690} |
| `chromeProcesses` | {'int': 4690} |
| `chromeProfiles` | {'int': 4690} |
| `chromeRendererMaxPssKb` | {'int': 4690} |
| `chromeRendererPssKb` | {'int': 4690} |
| `chromeRenderers` | {'int': 4690} |
| `chromeTabs` | {'int': 4690} |
| `chromeTabsProbedProfiles` | {'int': 4690} |
| `chromeUtilityPssKb` | {'int': 4690} |
| `desktopPssKb` | {'int': 4690} |
| `hostPssKb` | {'int': 4690} |
| `kind` | {'str': 4690} |
| `memAvailableKb` | {'int': 4690} |
| `memTotalKb` | {'int': 4690} |
| `otherPssKb` | {'int': 4690} |
| `processes` | {'int': 4690} |
| `pssFallbackProcesses` | {'int': 4690} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

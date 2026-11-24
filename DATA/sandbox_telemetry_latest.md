# sandbox_telemetry_parse — 2026-11-24 16:23:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2356193 lines=5222
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5207 |
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
| `chromeBrowserPssKb` | {'int': 5207} |
| `chromeGpuPssKb` | {'int': 5207} |
| `chromeOtherPssKb` | {'int': 5207} |
| `chromeProcesses` | {'int': 5207} |
| `chromeProfiles` | {'int': 5207} |
| `chromeRendererMaxPssKb` | {'int': 5207} |
| `chromeRendererPssKb` | {'int': 5207} |
| `chromeRenderers` | {'int': 5207} |
| `chromeTabs` | {'int': 5207} |
| `chromeTabsProbedProfiles` | {'int': 5207} |
| `chromeUtilityPssKb` | {'int': 5207} |
| `desktopPssKb` | {'int': 5207} |
| `hostPssKb` | {'int': 5207} |
| `kind` | {'str': 5207} |
| `memAvailableKb` | {'int': 5207} |
| `memTotalKb` | {'int': 5207} |
| `otherPssKb` | {'int': 5207} |
| `processes` | {'int': 5207} |
| `pssFallbackProcesses` | {'int': 5207} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

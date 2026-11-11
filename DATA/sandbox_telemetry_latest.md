# sandbox_telemetry_parse — 2026-11-11 15:41:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1698260 lines=3761
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3752 |
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
| `chromeBrowserPssKb` | {'int': 3752} |
| `chromeGpuPssKb` | {'int': 3752} |
| `chromeOtherPssKb` | {'int': 3752} |
| `chromeProcesses` | {'int': 3752} |
| `chromeProfiles` | {'int': 3752} |
| `chromeRendererMaxPssKb` | {'int': 3752} |
| `chromeRendererPssKb` | {'int': 3752} |
| `chromeRenderers` | {'int': 3752} |
| `chromeTabs` | {'int': 3752} |
| `chromeTabsProbedProfiles` | {'int': 3752} |
| `chromeUtilityPssKb` | {'int': 3752} |
| `desktopPssKb` | {'int': 3752} |
| `hostPssKb` | {'int': 3752} |
| `kind` | {'str': 3752} |
| `memAvailableKb` | {'int': 3752} |
| `memTotalKb` | {'int': 3752} |
| `otherPssKb` | {'int': 3752} |
| `processes` | {'int': 3752} |
| `pssFallbackProcesses` | {'int': 3752} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

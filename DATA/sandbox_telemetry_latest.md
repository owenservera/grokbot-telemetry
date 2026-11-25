# sandbox_telemetry_parse — 2026-11-25 19:08:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2883593 lines=6388
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6373 |
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
| `chromeBrowserPssKb` | {'int': 6373} |
| `chromeGpuPssKb` | {'int': 6373} |
| `chromeOtherPssKb` | {'int': 6373} |
| `chromeProcesses` | {'int': 6373} |
| `chromeProfiles` | {'int': 6373} |
| `chromeRendererMaxPssKb` | {'int': 6373} |
| `chromeRendererPssKb` | {'int': 6373} |
| `chromeRenderers` | {'int': 6373} |
| `chromeTabs` | {'int': 6373} |
| `chromeTabsProbedProfiles` | {'int': 6373} |
| `chromeUtilityPssKb` | {'int': 6373} |
| `desktopPssKb` | {'int': 6373} |
| `hostPssKb` | {'int': 6373} |
| `kind` | {'str': 6373} |
| `memAvailableKb` | {'int': 6373} |
| `memTotalKb` | {'int': 6373} |
| `otherPssKb` | {'int': 6373} |
| `processes` | {'int': 6373} |
| `pssFallbackProcesses` | {'int': 6373} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

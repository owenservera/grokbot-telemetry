# sandbox_telemetry_parse — 2026-11-11 13:48:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1658441 lines=3673
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3664 |
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
| `chromeBrowserPssKb` | {'int': 3664} |
| `chromeGpuPssKb` | {'int': 3664} |
| `chromeOtherPssKb` | {'int': 3664} |
| `chromeProcesses` | {'int': 3664} |
| `chromeProfiles` | {'int': 3664} |
| `chromeRendererMaxPssKb` | {'int': 3664} |
| `chromeRendererPssKb` | {'int': 3664} |
| `chromeRenderers` | {'int': 3664} |
| `chromeTabs` | {'int': 3664} |
| `chromeTabsProbedProfiles` | {'int': 3664} |
| `chromeUtilityPssKb` | {'int': 3664} |
| `desktopPssKb` | {'int': 3664} |
| `hostPssKb` | {'int': 3664} |
| `kind` | {'str': 3664} |
| `memAvailableKb` | {'int': 3664} |
| `memTotalKb` | {'int': 3664} |
| `otherPssKb` | {'int': 3664} |
| `processes` | {'int': 3664} |
| `pssFallbackProcesses` | {'int': 3664} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

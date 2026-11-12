# sandbox_telemetry_parse — 2026-11-12 14:47:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2179810 lines=4825
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4816 |
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
| `chromeBrowserPssKb` | {'int': 4816} |
| `chromeGpuPssKb` | {'int': 4816} |
| `chromeOtherPssKb` | {'int': 4816} |
| `chromeProcesses` | {'int': 4816} |
| `chromeProfiles` | {'int': 4816} |
| `chromeRendererMaxPssKb` | {'int': 4816} |
| `chromeRendererPssKb` | {'int': 4816} |
| `chromeRenderers` | {'int': 4816} |
| `chromeTabs` | {'int': 4816} |
| `chromeTabsProbedProfiles` | {'int': 4816} |
| `chromeUtilityPssKb` | {'int': 4816} |
| `desktopPssKb` | {'int': 4816} |
| `hostPssKb` | {'int': 4816} |
| `kind` | {'str': 4816} |
| `memAvailableKb` | {'int': 4816} |
| `memTotalKb` | {'int': 4816} |
| `otherPssKb` | {'int': 4816} |
| `processes` | {'int': 4816} |
| `pssFallbackProcesses` | {'int': 4816} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

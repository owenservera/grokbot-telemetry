# sandbox_telemetry_parse — 2026-11-12 06:06:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1998788 lines=4425
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4416 |
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
| `chromeBrowserPssKb` | {'int': 4416} |
| `chromeGpuPssKb` | {'int': 4416} |
| `chromeOtherPssKb` | {'int': 4416} |
| `chromeProcesses` | {'int': 4416} |
| `chromeProfiles` | {'int': 4416} |
| `chromeRendererMaxPssKb` | {'int': 4416} |
| `chromeRendererPssKb` | {'int': 4416} |
| `chromeRenderers` | {'int': 4416} |
| `chromeTabs` | {'int': 4416} |
| `chromeTabsProbedProfiles` | {'int': 4416} |
| `chromeUtilityPssKb` | {'int': 4416} |
| `desktopPssKb` | {'int': 4416} |
| `hostPssKb` | {'int': 4416} |
| `kind` | {'str': 4416} |
| `memAvailableKb` | {'int': 4416} |
| `memTotalKb` | {'int': 4416} |
| `otherPssKb` | {'int': 4416} |
| `processes` | {'int': 4416} |
| `pssFallbackProcesses` | {'int': 4416} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

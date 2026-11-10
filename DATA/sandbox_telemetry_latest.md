# sandbox_telemetry_parse — 2026-11-10 10:18:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1093700 lines=2425
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2416 |
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
| `chromeBrowserPssKb` | {'int': 2416} |
| `chromeGpuPssKb` | {'int': 2416} |
| `chromeOtherPssKb` | {'int': 2416} |
| `chromeProcesses` | {'int': 2416} |
| `chromeProfiles` | {'int': 2416} |
| `chromeRendererMaxPssKb` | {'int': 2416} |
| `chromeRendererPssKb` | {'int': 2416} |
| `chromeRenderers` | {'int': 2416} |
| `chromeTabs` | {'int': 2416} |
| `chromeTabsProbedProfiles` | {'int': 2416} |
| `chromeUtilityPssKb` | {'int': 2416} |
| `desktopPssKb` | {'int': 2416} |
| `hostPssKb` | {'int': 2416} |
| `kind` | {'str': 2416} |
| `memAvailableKb` | {'int': 2416} |
| `memTotalKb` | {'int': 2416} |
| `otherPssKb` | {'int': 2416} |
| `processes` | {'int': 2416} |
| `pssFallbackProcesses` | {'int': 2416} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

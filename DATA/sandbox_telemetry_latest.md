# sandbox_telemetry_parse — 2026-11-26 14:12:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3284841 lines=7275
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7260 |
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
| `chromeBrowserPssKb` | {'int': 7260} |
| `chromeGpuPssKb` | {'int': 7260} |
| `chromeOtherPssKb` | {'int': 7260} |
| `chromeProcesses` | {'int': 7260} |
| `chromeProfiles` | {'int': 7260} |
| `chromeRendererMaxPssKb` | {'int': 7260} |
| `chromeRendererPssKb` | {'int': 7260} |
| `chromeRenderers` | {'int': 7260} |
| `chromeTabs` | {'int': 7260} |
| `chromeTabsProbedProfiles` | {'int': 7260} |
| `chromeUtilityPssKb` | {'int': 7260} |
| `desktopPssKb` | {'int': 7260} |
| `hostPssKb` | {'int': 7260} |
| `kind` | {'str': 7260} |
| `memAvailableKb` | {'int': 7260} |
| `memTotalKb` | {'int': 7260} |
| `otherPssKb` | {'int': 7260} |
| `processes` | {'int': 7260} |
| `pssFallbackProcesses` | {'int': 7260} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

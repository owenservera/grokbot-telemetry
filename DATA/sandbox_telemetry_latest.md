# sandbox_telemetry_parse — 2026-11-12 23:29:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2373158 lines=5252
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5243 |
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
| `chromeBrowserPssKb` | {'int': 5243} |
| `chromeGpuPssKb` | {'int': 5243} |
| `chromeOtherPssKb` | {'int': 5243} |
| `chromeProcesses` | {'int': 5243} |
| `chromeProfiles` | {'int': 5243} |
| `chromeRendererMaxPssKb` | {'int': 5243} |
| `chromeRendererPssKb` | {'int': 5243} |
| `chromeRenderers` | {'int': 5243} |
| `chromeTabs` | {'int': 5243} |
| `chromeTabsProbedProfiles` | {'int': 5243} |
| `chromeUtilityPssKb` | {'int': 5243} |
| `desktopPssKb` | {'int': 5243} |
| `hostPssKb` | {'int': 5243} |
| `kind` | {'str': 5243} |
| `memAvailableKb` | {'int': 5243} |
| `memTotalKb` | {'int': 5243} |
| `otherPssKb` | {'int': 5243} |
| `processes` | {'int': 5243} |
| `pssFallbackProcesses` | {'int': 5243} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

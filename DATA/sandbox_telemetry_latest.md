# sandbox_telemetry_parse — 2026-11-17 22:06:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=559897 lines=1244
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1237 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1237} |
| `chromeGpuPssKb` | {'int': 1237} |
| `chromeOtherPssKb` | {'int': 1237} |
| `chromeProcesses` | {'int': 1237} |
| `chromeProfiles` | {'int': 1237} |
| `chromeRendererMaxPssKb` | {'int': 1237} |
| `chromeRendererPssKb` | {'int': 1237} |
| `chromeRenderers` | {'int': 1237} |
| `chromeTabs` | {'int': 1237} |
| `chromeTabsProbedProfiles` | {'int': 1237} |
| `chromeUtilityPssKb` | {'int': 1237} |
| `desktopPssKb` | {'int': 1237} |
| `hostPssKb` | {'int': 1237} |
| `kind` | {'str': 1237} |
| `memAvailableKb` | {'int': 1237} |
| `memTotalKb` | {'int': 1237} |
| `otherPssKb` | {'int': 1237} |
| `processes` | {'int': 1237} |
| `pssFallbackProcesses` | {'int': 1237} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

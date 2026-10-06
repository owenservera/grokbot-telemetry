# sandbox_telemetry_parse — 2026-10-06 19:50:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=568370 lines=1251
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1246 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1246} |
| `chromeGpuPssKb` | {'int': 1246} |
| `chromeOtherPssKb` | {'int': 1246} |
| `chromeProcesses` | {'int': 1246} |
| `chromeProfiles` | {'int': 1246} |
| `chromeRendererMaxPssKb` | {'int': 1246} |
| `chromeRendererPssKb` | {'int': 1246} |
| `chromeRenderers` | {'int': 1246} |
| `chromeTabs` | {'int': 1246} |
| `chromeTabsProbedProfiles` | {'int': 1246} |
| `chromeUtilityPssKb` | {'int': 1246} |
| `desktopPssKb` | {'int': 1246} |
| `hostPssKb` | {'int': 1246} |
| `kind` | {'str': 1246} |
| `memAvailableKb` | {'int': 1246} |
| `memTotalKb` | {'int': 1246} |
| `otherPssKb` | {'int': 1246} |
| `processes` | {'int': 1246} |
| `pssFallbackProcesses` | {'int': 1246} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

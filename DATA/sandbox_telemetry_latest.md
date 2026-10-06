# sandbox_telemetry_parse — 2026-10-06 02:09:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=89114 lines=200
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 195 |
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
| `chromeBrowserPssKb` | {'int': 195} |
| `chromeGpuPssKb` | {'int': 195} |
| `chromeOtherPssKb` | {'int': 195} |
| `chromeProcesses` | {'int': 195} |
| `chromeProfiles` | {'int': 195} |
| `chromeRendererMaxPssKb` | {'int': 195} |
| `chromeRendererPssKb` | {'int': 195} |
| `chromeRenderers` | {'int': 195} |
| `chromeTabs` | {'int': 195} |
| `chromeTabsProbedProfiles` | {'int': 195} |
| `chromeUtilityPssKb` | {'int': 195} |
| `desktopPssKb` | {'int': 195} |
| `hostPssKb` | {'int': 195} |
| `kind` | {'str': 195} |
| `memAvailableKb` | {'int': 195} |
| `memTotalKb` | {'int': 195} |
| `otherPssKb` | {'int': 195} |
| `processes` | {'int': 195} |
| `pssFallbackProcesses` | {'int': 195} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

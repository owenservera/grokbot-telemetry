# sandbox_telemetry_parse — 2026-10-27 01:13:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=241377 lines=537
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 532 |
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
| `chromeBrowserPssKb` | {'int': 532} |
| `chromeGpuPssKb` | {'int': 532} |
| `chromeOtherPssKb` | {'int': 532} |
| `chromeProcesses` | {'int': 532} |
| `chromeProfiles` | {'int': 532} |
| `chromeRendererMaxPssKb` | {'int': 532} |
| `chromeRendererPssKb` | {'int': 532} |
| `chromeRenderers` | {'int': 532} |
| `chromeTabs` | {'int': 532} |
| `chromeTabsProbedProfiles` | {'int': 532} |
| `chromeUtilityPssKb` | {'int': 532} |
| `desktopPssKb` | {'int': 532} |
| `hostPssKb` | {'int': 532} |
| `kind` | {'str': 532} |
| `memAvailableKb` | {'int': 532} |
| `memTotalKb` | {'int': 532} |
| `otherPssKb` | {'int': 532} |
| `processes` | {'int': 532} |
| `pssFallbackProcesses` | {'int': 532} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

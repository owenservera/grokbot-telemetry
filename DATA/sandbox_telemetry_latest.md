# sandbox_telemetry_parse — 2026-10-27 02:44:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=277128 lines=616
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 611 |
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
| `chromeBrowserPssKb` | {'int': 611} |
| `chromeGpuPssKb` | {'int': 611} |
| `chromeOtherPssKb` | {'int': 611} |
| `chromeProcesses` | {'int': 611} |
| `chromeProfiles` | {'int': 611} |
| `chromeRendererMaxPssKb` | {'int': 611} |
| `chromeRendererPssKb` | {'int': 611} |
| `chromeRenderers` | {'int': 611} |
| `chromeTabs` | {'int': 611} |
| `chromeTabsProbedProfiles` | {'int': 611} |
| `chromeUtilityPssKb` | {'int': 611} |
| `desktopPssKb` | {'int': 611} |
| `hostPssKb` | {'int': 611} |
| `kind` | {'str': 611} |
| `memAvailableKb` | {'int': 611} |
| `memTotalKb` | {'int': 611} |
| `otherPssKb` | {'int': 611} |
| `processes` | {'int': 611} |
| `pssFallbackProcesses` | {'int': 611} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

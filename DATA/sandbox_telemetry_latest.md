# sandbox_telemetry_parse — 2026-10-12 21:48:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=674772 lines=1497
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1492 |
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
| `chromeBrowserPssKb` | {'int': 1492} |
| `chromeGpuPssKb` | {'int': 1492} |
| `chromeOtherPssKb` | {'int': 1492} |
| `chromeProcesses` | {'int': 1492} |
| `chromeProfiles` | {'int': 1492} |
| `chromeRendererMaxPssKb` | {'int': 1492} |
| `chromeRendererPssKb` | {'int': 1492} |
| `chromeRenderers` | {'int': 1492} |
| `chromeTabs` | {'int': 1492} |
| `chromeTabsProbedProfiles` | {'int': 1492} |
| `chromeUtilityPssKb` | {'int': 1492} |
| `desktopPssKb` | {'int': 1492} |
| `hostPssKb` | {'int': 1492} |
| `kind` | {'str': 1492} |
| `memAvailableKb` | {'int': 1492} |
| `memTotalKb` | {'int': 1492} |
| `otherPssKb` | {'int': 1492} |
| `processes` | {'int': 1492} |
| `pssFallbackProcesses` | {'int': 1492} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

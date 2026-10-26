# sandbox_telemetry_parse — 2026-10-26 23:12:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=193359 lines=431
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 426 |
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
| `chromeBrowserPssKb` | {'int': 426} |
| `chromeGpuPssKb` | {'int': 426} |
| `chromeOtherPssKb` | {'int': 426} |
| `chromeProcesses` | {'int': 426} |
| `chromeProfiles` | {'int': 426} |
| `chromeRendererMaxPssKb` | {'int': 426} |
| `chromeRendererPssKb` | {'int': 426} |
| `chromeRenderers` | {'int': 426} |
| `chromeTabs` | {'int': 426} |
| `chromeTabsProbedProfiles` | {'int': 426} |
| `chromeUtilityPssKb` | {'int': 426} |
| `desktopPssKb` | {'int': 426} |
| `hostPssKb` | {'int': 426} |
| `kind` | {'str': 426} |
| `memAvailableKb` | {'int': 426} |
| `memTotalKb` | {'int': 426} |
| `otherPssKb` | {'int': 426} |
| `processes` | {'int': 426} |
| `pssFallbackProcesses` | {'int': 426} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

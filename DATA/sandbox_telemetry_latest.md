# sandbox_telemetry_parse — 2026-10-27 05:20:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=341764 lines=759
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 754 |
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
| `chromeBrowserPssKb` | {'int': 754} |
| `chromeGpuPssKb` | {'int': 754} |
| `chromeOtherPssKb` | {'int': 754} |
| `chromeProcesses` | {'int': 754} |
| `chromeProfiles` | {'int': 754} |
| `chromeRendererMaxPssKb` | {'int': 754} |
| `chromeRendererPssKb` | {'int': 754} |
| `chromeRenderers` | {'int': 754} |
| `chromeTabs` | {'int': 754} |
| `chromeTabsProbedProfiles` | {'int': 754} |
| `chromeUtilityPssKb` | {'int': 754} |
| `desktopPssKb` | {'int': 754} |
| `hostPssKb` | {'int': 754} |
| `kind` | {'str': 754} |
| `memAvailableKb` | {'int': 754} |
| `memTotalKb` | {'int': 754} |
| `otherPssKb` | {'int': 754} |
| `processes` | {'int': 754} |
| `pssFallbackProcesses` | {'int': 754} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

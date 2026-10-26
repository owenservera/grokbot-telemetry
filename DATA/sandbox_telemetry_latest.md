# sandbox_telemetry_parse — 2026-10-26 21:20:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=145794 lines=326
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 321 |
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
| `chromeBrowserPssKb` | {'int': 321} |
| `chromeGpuPssKb` | {'int': 321} |
| `chromeOtherPssKb` | {'int': 321} |
| `chromeProcesses` | {'int': 321} |
| `chromeProfiles` | {'int': 321} |
| `chromeRendererMaxPssKb` | {'int': 321} |
| `chromeRendererPssKb` | {'int': 321} |
| `chromeRenderers` | {'int': 321} |
| `chromeTabs` | {'int': 321} |
| `chromeTabsProbedProfiles` | {'int': 321} |
| `chromeUtilityPssKb` | {'int': 321} |
| `desktopPssKb` | {'int': 321} |
| `hostPssKb` | {'int': 321} |
| `kind` | {'str': 321} |
| `memAvailableKb` | {'int': 321} |
| `memTotalKb` | {'int': 321} |
| `otherPssKb` | {'int': 321} |
| `processes` | {'int': 321} |
| `pssFallbackProcesses` | {'int': 321} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

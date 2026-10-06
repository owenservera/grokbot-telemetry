# sandbox_telemetry_parse — 2026-10-06 13:10:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=387338 lines=854
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 849 |
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
| `chromeBrowserPssKb` | {'int': 849} |
| `chromeGpuPssKb` | {'int': 849} |
| `chromeOtherPssKb` | {'int': 849} |
| `chromeProcesses` | {'int': 849} |
| `chromeProfiles` | {'int': 849} |
| `chromeRendererMaxPssKb` | {'int': 849} |
| `chromeRendererPssKb` | {'int': 849} |
| `chromeRenderers` | {'int': 849} |
| `chromeTabs` | {'int': 849} |
| `chromeTabsProbedProfiles` | {'int': 849} |
| `chromeUtilityPssKb` | {'int': 849} |
| `desktopPssKb` | {'int': 849} |
| `hostPssKb` | {'int': 849} |
| `kind` | {'str': 849} |
| `memAvailableKb` | {'int': 849} |
| `memTotalKb` | {'int': 849} |
| `otherPssKb` | {'int': 849} |
| `processes` | {'int': 849} |
| `pssFallbackProcesses` | {'int': 849} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

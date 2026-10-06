# sandbox_telemetry_parse — 2026-10-06 07:36:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=236858 lines=524
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 519 |
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
| `chromeBrowserPssKb` | {'int': 519} |
| `chromeGpuPssKb` | {'int': 519} |
| `chromeOtherPssKb` | {'int': 519} |
| `chromeProcesses` | {'int': 519} |
| `chromeProfiles` | {'int': 519} |
| `chromeRendererMaxPssKb` | {'int': 519} |
| `chromeRendererPssKb` | {'int': 519} |
| `chromeRenderers` | {'int': 519} |
| `chromeTabs` | {'int': 519} |
| `chromeTabsProbedProfiles` | {'int': 519} |
| `chromeUtilityPssKb` | {'int': 519} |
| `desktopPssKb` | {'int': 519} |
| `hostPssKb` | {'int': 519} |
| `kind` | {'str': 519} |
| `memAvailableKb` | {'int': 519} |
| `memTotalKb` | {'int': 519} |
| `otherPssKb` | {'int': 519} |
| `processes` | {'int': 519} |
| `pssFallbackProcesses` | {'int': 519} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

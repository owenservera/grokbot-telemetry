# sandbox_telemetry_parse — 2026-10-26 17:36:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=48399 lines=111
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 106 |
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
| `chromeBrowserPssKb` | {'int': 106} |
| `chromeGpuPssKb` | {'int': 106} |
| `chromeOtherPssKb` | {'int': 106} |
| `chromeProcesses` | {'int': 106} |
| `chromeProfiles` | {'int': 106} |
| `chromeRendererMaxPssKb` | {'int': 106} |
| `chromeRendererPssKb` | {'int': 106} |
| `chromeRenderers` | {'int': 106} |
| `chromeTabs` | {'int': 106} |
| `chromeTabsProbedProfiles` | {'int': 106} |
| `chromeUtilityPssKb` | {'int': 106} |
| `desktopPssKb` | {'int': 106} |
| `hostPssKb` | {'int': 106} |
| `kind` | {'str': 106} |
| `memAvailableKb` | {'int': 106} |
| `memTotalKb` | {'int': 106} |
| `otherPssKb` | {'int': 106} |
| `processes` | {'int': 106} |
| `pssFallbackProcesses` | {'int': 106} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

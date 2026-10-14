# sandbox_telemetry_parse — 2026-10-14 02:49:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=55514 lines=127
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 122 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 122} |
| `chromeGpuPssKb` | {'int': 122} |
| `chromeOtherPssKb` | {'int': 122} |
| `chromeProcesses` | {'int': 122} |
| `chromeProfiles` | {'int': 122} |
| `chromeRendererMaxPssKb` | {'int': 122} |
| `chromeRendererPssKb` | {'int': 122} |
| `chromeRenderers` | {'int': 122} |
| `chromeTabs` | {'int': 122} |
| `chromeTabsProbedProfiles` | {'int': 122} |
| `chromeUtilityPssKb` | {'int': 122} |
| `desktopPssKb` | {'int': 122} |
| `hostPssKb` | {'int': 122} |
| `kind` | {'str': 122} |
| `memAvailableKb` | {'int': 122} |
| `memTotalKb` | {'int': 122} |
| `otherPssKb` | {'int': 122} |
| `processes` | {'int': 122} |
| `pssFallbackProcesses` | {'int': 122} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

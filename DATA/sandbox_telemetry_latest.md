# sandbox_telemetry_parse — 2026-10-07 15:25:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1096597 lines=2409
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2404 |
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
| `chromeBrowserPssKb` | {'int': 2404} |
| `chromeGpuPssKb` | {'int': 2404} |
| `chromeOtherPssKb` | {'int': 2404} |
| `chromeProcesses` | {'int': 2404} |
| `chromeProfiles` | {'int': 2404} |
| `chromeRendererMaxPssKb` | {'int': 2404} |
| `chromeRendererPssKb` | {'int': 2404} |
| `chromeRenderers` | {'int': 2404} |
| `chromeTabs` | {'int': 2404} |
| `chromeTabsProbedProfiles` | {'int': 2404} |
| `chromeUtilityPssKb` | {'int': 2404} |
| `desktopPssKb` | {'int': 2404} |
| `hostPssKb` | {'int': 2404} |
| `kind` | {'str': 2404} |
| `memAvailableKb` | {'int': 2404} |
| `memTotalKb` | {'int': 2404} |
| `otherPssKb` | {'int': 2404} |
| `processes` | {'int': 2404} |
| `pssFallbackProcesses` | {'int': 2404} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

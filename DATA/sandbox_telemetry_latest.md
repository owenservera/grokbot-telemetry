# sandbox_telemetry_parse — 2026-10-07 13:37:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1049629 lines=2306
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2301 |
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
| `chromeBrowserPssKb` | {'int': 2301} |
| `chromeGpuPssKb` | {'int': 2301} |
| `chromeOtherPssKb` | {'int': 2301} |
| `chromeProcesses` | {'int': 2301} |
| `chromeProfiles` | {'int': 2301} |
| `chromeRendererMaxPssKb` | {'int': 2301} |
| `chromeRendererPssKb` | {'int': 2301} |
| `chromeRenderers` | {'int': 2301} |
| `chromeTabs` | {'int': 2301} |
| `chromeTabsProbedProfiles` | {'int': 2301} |
| `chromeUtilityPssKb` | {'int': 2301} |
| `desktopPssKb` | {'int': 2301} |
| `hostPssKb` | {'int': 2301} |
| `kind` | {'str': 2301} |
| `memAvailableKb` | {'int': 2301} |
| `memTotalKb` | {'int': 2301} |
| `otherPssKb` | {'int': 2301} |
| `processes` | {'int': 2301} |
| `pssFallbackProcesses` | {'int': 2301} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

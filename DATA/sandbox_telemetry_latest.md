# sandbox_telemetry_parse — 2026-10-06 22:05:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=629474 lines=1385
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1380 |
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
| `chromeBrowserPssKb` | {'int': 1380} |
| `chromeGpuPssKb` | {'int': 1380} |
| `chromeOtherPssKb` | {'int': 1380} |
| `chromeProcesses` | {'int': 1380} |
| `chromeProfiles` | {'int': 1380} |
| `chromeRendererMaxPssKb` | {'int': 1380} |
| `chromeRendererPssKb` | {'int': 1380} |
| `chromeRenderers` | {'int': 1380} |
| `chromeTabs` | {'int': 1380} |
| `chromeTabsProbedProfiles` | {'int': 1380} |
| `chromeUtilityPssKb` | {'int': 1380} |
| `desktopPssKb` | {'int': 1380} |
| `hostPssKb` | {'int': 1380} |
| `kind` | {'str': 1380} |
| `memAvailableKb` | {'int': 1380} |
| `memTotalKb` | {'int': 1380} |
| `otherPssKb` | {'int': 1380} |
| `processes` | {'int': 1380} |
| `pssFallbackProcesses` | {'int': 1380} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

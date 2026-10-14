# sandbox_telemetry_parse — 2026-10-14 11:45:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=266598 lines=594
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 589 |
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
| `chromeBrowserPssKb` | {'int': 589} |
| `chromeGpuPssKb` | {'int': 589} |
| `chromeOtherPssKb` | {'int': 589} |
| `chromeProcesses` | {'int': 589} |
| `chromeProfiles` | {'int': 589} |
| `chromeRendererMaxPssKb` | {'int': 589} |
| `chromeRendererPssKb` | {'int': 589} |
| `chromeRenderers` | {'int': 589} |
| `chromeTabs` | {'int': 589} |
| `chromeTabsProbedProfiles` | {'int': 589} |
| `chromeUtilityPssKb` | {'int': 589} |
| `desktopPssKb` | {'int': 589} |
| `hostPssKb` | {'int': 589} |
| `kind` | {'str': 589} |
| `memAvailableKb` | {'int': 589} |
| `memTotalKb` | {'int': 589} |
| `otherPssKb` | {'int': 589} |
| `processes` | {'int': 589} |
| `pssFallbackProcesses` | {'int': 589} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

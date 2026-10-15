# sandbox_telemetry_parse — 2026-10-15 05:42:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=692834 lines=1537
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1532 |
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
| `chromeBrowserPssKb` | {'int': 1532} |
| `chromeGpuPssKb` | {'int': 1532} |
| `chromeOtherPssKb` | {'int': 1532} |
| `chromeProcesses` | {'int': 1532} |
| `chromeProfiles` | {'int': 1532} |
| `chromeRendererMaxPssKb` | {'int': 1532} |
| `chromeRendererPssKb` | {'int': 1532} |
| `chromeRenderers` | {'int': 1532} |
| `chromeTabs` | {'int': 1532} |
| `chromeTabsProbedProfiles` | {'int': 1532} |
| `chromeUtilityPssKb` | {'int': 1532} |
| `desktopPssKb` | {'int': 1532} |
| `hostPssKb` | {'int': 1532} |
| `kind` | {'str': 1532} |
| `memAvailableKb` | {'int': 1532} |
| `memTotalKb` | {'int': 1532} |
| `otherPssKb` | {'int': 1532} |
| `processes` | {'int': 1532} |
| `pssFallbackProcesses` | {'int': 1532} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

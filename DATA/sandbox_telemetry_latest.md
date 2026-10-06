# sandbox_telemetry_parse — 2026-10-06 12:05:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=359066 lines=792
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 787 |
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
| `chromeBrowserPssKb` | {'int': 787} |
| `chromeGpuPssKb` | {'int': 787} |
| `chromeOtherPssKb` | {'int': 787} |
| `chromeProcesses` | {'int': 787} |
| `chromeProfiles` | {'int': 787} |
| `chromeRendererMaxPssKb` | {'int': 787} |
| `chromeRendererPssKb` | {'int': 787} |
| `chromeRenderers` | {'int': 787} |
| `chromeTabs` | {'int': 787} |
| `chromeTabsProbedProfiles` | {'int': 787} |
| `chromeUtilityPssKb` | {'int': 787} |
| `desktopPssKb` | {'int': 787} |
| `hostPssKb` | {'int': 787} |
| `kind` | {'str': 787} |
| `memAvailableKb` | {'int': 787} |
| `memTotalKb` | {'int': 787} |
| `otherPssKb` | {'int': 787} |
| `processes` | {'int': 787} |
| `pssFallbackProcesses` | {'int': 787} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

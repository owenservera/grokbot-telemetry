# sandbox_telemetry_parse — 2026-10-06 09:04:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=276986 lines=612
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 607 |
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
| `chromeBrowserPssKb` | {'int': 607} |
| `chromeGpuPssKb` | {'int': 607} |
| `chromeOtherPssKb` | {'int': 607} |
| `chromeProcesses` | {'int': 607} |
| `chromeProfiles` | {'int': 607} |
| `chromeRendererMaxPssKb` | {'int': 607} |
| `chromeRendererPssKb` | {'int': 607} |
| `chromeRenderers` | {'int': 607} |
| `chromeTabs` | {'int': 607} |
| `chromeTabsProbedProfiles` | {'int': 607} |
| `chromeUtilityPssKb` | {'int': 607} |
| `desktopPssKb` | {'int': 607} |
| `hostPssKb` | {'int': 607} |
| `kind` | {'str': 607} |
| `memAvailableKb` | {'int': 607} |
| `memTotalKb` | {'int': 607} |
| `otherPssKb` | {'int': 607} |
| `processes` | {'int': 607} |
| `pssFallbackProcesses` | {'int': 607} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

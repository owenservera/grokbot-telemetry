# sandbox_telemetry_parse — 2026-10-16 01:26:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1151614 lines=2552
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2547 |
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
| `chromeBrowserPssKb` | {'int': 2547} |
| `chromeGpuPssKb` | {'int': 2547} |
| `chromeOtherPssKb` | {'int': 2547} |
| `chromeProcesses` | {'int': 2547} |
| `chromeProfiles` | {'int': 2547} |
| `chromeRendererMaxPssKb` | {'int': 2547} |
| `chromeRendererPssKb` | {'int': 2547} |
| `chromeRenderers` | {'int': 2547} |
| `chromeTabs` | {'int': 2547} |
| `chromeTabsProbedProfiles` | {'int': 2547} |
| `chromeUtilityPssKb` | {'int': 2547} |
| `desktopPssKb` | {'int': 2547} |
| `hostPssKb` | {'int': 2547} |
| `kind` | {'str': 2547} |
| `memAvailableKb` | {'int': 2547} |
| `memTotalKb` | {'int': 2547} |
| `otherPssKb` | {'int': 2547} |
| `processes` | {'int': 2547} |
| `pssFallbackProcesses` | {'int': 2547} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

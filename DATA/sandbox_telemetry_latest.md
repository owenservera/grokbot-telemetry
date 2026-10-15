# sandbox_telemetry_parse — 2026-10-15 06:21:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=708654 lines=1572
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1567 |
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
| `chromeBrowserPssKb` | {'int': 1567} |
| `chromeGpuPssKb` | {'int': 1567} |
| `chromeOtherPssKb` | {'int': 1567} |
| `chromeProcesses` | {'int': 1567} |
| `chromeProfiles` | {'int': 1567} |
| `chromeRendererMaxPssKb` | {'int': 1567} |
| `chromeRendererPssKb` | {'int': 1567} |
| `chromeRenderers` | {'int': 1567} |
| `chromeTabs` | {'int': 1567} |
| `chromeTabsProbedProfiles` | {'int': 1567} |
| `chromeUtilityPssKb` | {'int': 1567} |
| `desktopPssKb` | {'int': 1567} |
| `hostPssKb` | {'int': 1567} |
| `kind` | {'str': 1567} |
| `memAvailableKb` | {'int': 1567} |
| `memTotalKb` | {'int': 1567} |
| `otherPssKb` | {'int': 1567} |
| `processes` | {'int': 1567} |
| `pssFallbackProcesses` | {'int': 1567} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

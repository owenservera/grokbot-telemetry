# sandbox_telemetry_parse — 2026-10-06 06:49:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=215882 lines=478
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 473 |
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
| `chromeBrowserPssKb` | {'int': 473} |
| `chromeGpuPssKb` | {'int': 473} |
| `chromeOtherPssKb` | {'int': 473} |
| `chromeProcesses` | {'int': 473} |
| `chromeProfiles` | {'int': 473} |
| `chromeRendererMaxPssKb` | {'int': 473} |
| `chromeRendererPssKb` | {'int': 473} |
| `chromeRenderers` | {'int': 473} |
| `chromeTabs` | {'int': 473} |
| `chromeTabsProbedProfiles` | {'int': 473} |
| `chromeUtilityPssKb` | {'int': 473} |
| `desktopPssKb` | {'int': 473} |
| `hostPssKb` | {'int': 473} |
| `kind` | {'str': 473} |
| `memAvailableKb` | {'int': 473} |
| `memTotalKb` | {'int': 473} |
| `otherPssKb` | {'int': 473} |
| `processes` | {'int': 473} |
| `pssFallbackProcesses` | {'int': 473} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

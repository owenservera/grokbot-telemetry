# sandbox_telemetry_parse — 2026-10-15 10:26:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=810806 lines=1798
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1793 |
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
| `chromeBrowserPssKb` | {'int': 1793} |
| `chromeGpuPssKb` | {'int': 1793} |
| `chromeOtherPssKb` | {'int': 1793} |
| `chromeProcesses` | {'int': 1793} |
| `chromeProfiles` | {'int': 1793} |
| `chromeRendererMaxPssKb` | {'int': 1793} |
| `chromeRendererPssKb` | {'int': 1793} |
| `chromeRenderers` | {'int': 1793} |
| `chromeTabs` | {'int': 1793} |
| `chromeTabsProbedProfiles` | {'int': 1793} |
| `chromeUtilityPssKb` | {'int': 1793} |
| `desktopPssKb` | {'int': 1793} |
| `hostPssKb` | {'int': 1793} |
| `kind` | {'str': 1793} |
| `memAvailableKb` | {'int': 1793} |
| `memTotalKb` | {'int': 1793} |
| `otherPssKb` | {'int': 1793} |
| `processes` | {'int': 1793} |
| `pssFallbackProcesses` | {'int': 1793} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-14 13:22:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=306374 lines=682
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 677 |
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
| `chromeBrowserPssKb` | {'int': 677} |
| `chromeGpuPssKb` | {'int': 677} |
| `chromeOtherPssKb` | {'int': 677} |
| `chromeProcesses` | {'int': 677} |
| `chromeProfiles` | {'int': 677} |
| `chromeRendererMaxPssKb` | {'int': 677} |
| `chromeRendererPssKb` | {'int': 677} |
| `chromeRenderers` | {'int': 677} |
| `chromeTabs` | {'int': 677} |
| `chromeTabsProbedProfiles` | {'int': 677} |
| `chromeUtilityPssKb` | {'int': 677} |
| `desktopPssKb` | {'int': 677} |
| `hostPssKb` | {'int': 677} |
| `kind` | {'str': 677} |
| `memAvailableKb` | {'int': 677} |
| `memTotalKb` | {'int': 677} |
| `otherPssKb` | {'int': 677} |
| `processes` | {'int': 677} |
| `pssFallbackProcesses` | {'int': 677} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

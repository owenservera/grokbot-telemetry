# sandbox_telemetry_parse — 2026-10-14 12:49:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=294622 lines=656
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 651 |
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
| `chromeBrowserPssKb` | {'int': 651} |
| `chromeGpuPssKb` | {'int': 651} |
| `chromeOtherPssKb` | {'int': 651} |
| `chromeProcesses` | {'int': 651} |
| `chromeProfiles` | {'int': 651} |
| `chromeRendererMaxPssKb` | {'int': 651} |
| `chromeRendererPssKb` | {'int': 651} |
| `chromeRenderers` | {'int': 651} |
| `chromeTabs` | {'int': 651} |
| `chromeTabsProbedProfiles` | {'int': 651} |
| `chromeUtilityPssKb` | {'int': 651} |
| `desktopPssKb` | {'int': 651} |
| `hostPssKb` | {'int': 651} |
| `kind` | {'str': 651} |
| `memAvailableKb` | {'int': 651} |
| `memTotalKb` | {'int': 651} |
| `otherPssKb` | {'int': 651} |
| `processes` | {'int': 651} |
| `pssFallbackProcesses` | {'int': 651} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

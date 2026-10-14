# sandbox_telemetry_parse — 2026-10-14 05:24:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=113370 lines=255
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 250 |
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
| `chromeBrowserPssKb` | {'int': 250} |
| `chromeGpuPssKb` | {'int': 250} |
| `chromeOtherPssKb` | {'int': 250} |
| `chromeProcesses` | {'int': 250} |
| `chromeProfiles` | {'int': 250} |
| `chromeRendererMaxPssKb` | {'int': 250} |
| `chromeRendererPssKb` | {'int': 250} |
| `chromeRenderers` | {'int': 250} |
| `chromeTabs` | {'int': 250} |
| `chromeTabsProbedProfiles` | {'int': 250} |
| `chromeUtilityPssKb` | {'int': 250} |
| `desktopPssKb` | {'int': 250} |
| `hostPssKb` | {'int': 250} |
| `kind` | {'str': 250} |
| `memAvailableKb` | {'int': 250} |
| `memTotalKb` | {'int': 250} |
| `otherPssKb` | {'int': 250} |
| `processes` | {'int': 250} |
| `pssFallbackProcesses` | {'int': 250} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

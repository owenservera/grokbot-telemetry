# sandbox_telemetry_parse — 2026-10-14 18:06:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=412594 lines=917
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 912 |
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
| `chromeBrowserPssKb` | {'int': 912} |
| `chromeGpuPssKb` | {'int': 912} |
| `chromeOtherPssKb` | {'int': 912} |
| `chromeProcesses` | {'int': 912} |
| `chromeProfiles` | {'int': 912} |
| `chromeRendererMaxPssKb` | {'int': 912} |
| `chromeRendererPssKb` | {'int': 912} |
| `chromeRenderers` | {'int': 912} |
| `chromeTabs` | {'int': 912} |
| `chromeTabsProbedProfiles` | {'int': 912} |
| `chromeUtilityPssKb` | {'int': 912} |
| `desktopPssKb` | {'int': 912} |
| `hostPssKb` | {'int': 912} |
| `kind` | {'str': 912} |
| `memAvailableKb` | {'int': 912} |
| `memTotalKb` | {'int': 912} |
| `otherPssKb` | {'int': 912} |
| `processes` | {'int': 912} |
| `pssFallbackProcesses` | {'int': 912} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

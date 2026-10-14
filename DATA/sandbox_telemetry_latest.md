# sandbox_telemetry_parse — 2026-10-15 00:22:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=565370 lines=1255
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1250 |
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
| `chromeBrowserPssKb` | {'int': 1250} |
| `chromeGpuPssKb` | {'int': 1250} |
| `chromeOtherPssKb` | {'int': 1250} |
| `chromeProcesses` | {'int': 1250} |
| `chromeProfiles` | {'int': 1250} |
| `chromeRendererMaxPssKb` | {'int': 1250} |
| `chromeRendererPssKb` | {'int': 1250} |
| `chromeRenderers` | {'int': 1250} |
| `chromeTabs` | {'int': 1250} |
| `chromeTabsProbedProfiles` | {'int': 1250} |
| `chromeUtilityPssKb` | {'int': 1250} |
| `desktopPssKb` | {'int': 1250} |
| `hostPssKb` | {'int': 1250} |
| `kind` | {'str': 1250} |
| `memAvailableKb` | {'int': 1250} |
| `memTotalKb` | {'int': 1250} |
| `otherPssKb` | {'int': 1250} |
| `processes` | {'int': 1250} |
| `pssFallbackProcesses` | {'int': 1250} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

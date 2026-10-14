# sandbox_telemetry_parse — 2026-10-14 08:03:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=177554 lines=397
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 392 |
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
| `chromeBrowserPssKb` | {'int': 392} |
| `chromeGpuPssKb` | {'int': 392} |
| `chromeOtherPssKb` | {'int': 392} |
| `chromeProcesses` | {'int': 392} |
| `chromeProfiles` | {'int': 392} |
| `chromeRendererMaxPssKb` | {'int': 392} |
| `chromeRendererPssKb` | {'int': 392} |
| `chromeRenderers` | {'int': 392} |
| `chromeTabs` | {'int': 392} |
| `chromeTabsProbedProfiles` | {'int': 392} |
| `chromeUtilityPssKb` | {'int': 392} |
| `desktopPssKb` | {'int': 392} |
| `hostPssKb` | {'int': 392} |
| `kind` | {'str': 392} |
| `memAvailableKb` | {'int': 392} |
| `memTotalKb` | {'int': 392} |
| `otherPssKb` | {'int': 392} |
| `processes` | {'int': 392} |
| `pssFallbackProcesses` | {'int': 392} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-15 09:14:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=781426 lines=1733
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1728 |
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
| `chromeBrowserPssKb` | {'int': 1728} |
| `chromeGpuPssKb` | {'int': 1728} |
| `chromeOtherPssKb` | {'int': 1728} |
| `chromeProcesses` | {'int': 1728} |
| `chromeProfiles` | {'int': 1728} |
| `chromeRendererMaxPssKb` | {'int': 1728} |
| `chromeRendererPssKb` | {'int': 1728} |
| `chromeRenderers` | {'int': 1728} |
| `chromeTabs` | {'int': 1728} |
| `chromeTabsProbedProfiles` | {'int': 1728} |
| `chromeUtilityPssKb` | {'int': 1728} |
| `desktopPssKb` | {'int': 1728} |
| `hostPssKb` | {'int': 1728} |
| `kind` | {'str': 1728} |
| `memAvailableKb` | {'int': 1728} |
| `memTotalKb` | {'int': 1728} |
| `otherPssKb` | {'int': 1728} |
| `processes` | {'int': 1728} |
| `pssFallbackProcesses` | {'int': 1728} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

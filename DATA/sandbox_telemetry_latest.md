# sandbox_telemetry_parse — 2026-10-15 09:07:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=778262 lines=1726
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1721 |
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
| `chromeBrowserPssKb` | {'int': 1721} |
| `chromeGpuPssKb` | {'int': 1721} |
| `chromeOtherPssKb` | {'int': 1721} |
| `chromeProcesses` | {'int': 1721} |
| `chromeProfiles` | {'int': 1721} |
| `chromeRendererMaxPssKb` | {'int': 1721} |
| `chromeRendererPssKb` | {'int': 1721} |
| `chromeRenderers` | {'int': 1721} |
| `chromeTabs` | {'int': 1721} |
| `chromeTabsProbedProfiles` | {'int': 1721} |
| `chromeUtilityPssKb` | {'int': 1721} |
| `desktopPssKb` | {'int': 1721} |
| `hostPssKb` | {'int': 1721} |
| `kind` | {'str': 1721} |
| `memAvailableKb` | {'int': 1721} |
| `memTotalKb` | {'int': 1721} |
| `otherPssKb` | {'int': 1721} |
| `processes` | {'int': 1721} |
| `pssFallbackProcesses` | {'int': 1721} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

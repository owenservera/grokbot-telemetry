# sandbox_telemetry_parse — 2026-10-14 01:34:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=23874 lines=57
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 52 |
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
| `chromeBrowserPssKb` | {'int': 52} |
| `chromeGpuPssKb` | {'int': 52} |
| `chromeOtherPssKb` | {'int': 52} |
| `chromeProcesses` | {'int': 52} |
| `chromeProfiles` | {'int': 52} |
| `chromeRendererMaxPssKb` | {'int': 52} |
| `chromeRendererPssKb` | {'int': 52} |
| `chromeRenderers` | {'int': 52} |
| `chromeTabs` | {'int': 52} |
| `chromeTabsProbedProfiles` | {'int': 52} |
| `chromeUtilityPssKb` | {'int': 52} |
| `desktopPssKb` | {'int': 52} |
| `hostPssKb` | {'int': 52} |
| `kind` | {'str': 52} |
| `memAvailableKb` | {'int': 52} |
| `memTotalKb` | {'int': 52} |
| `otherPssKb` | {'int': 52} |
| `processes` | {'int': 52} |
| `pssFallbackProcesses` | {'int': 52} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

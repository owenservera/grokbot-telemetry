# sandbox_telemetry_parse — 2026-10-14 02:50:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=56418 lines=129
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 124 |
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
| `chromeBrowserPssKb` | {'int': 124} |
| `chromeGpuPssKb` | {'int': 124} |
| `chromeOtherPssKb` | {'int': 124} |
| `chromeProcesses` | {'int': 124} |
| `chromeProfiles` | {'int': 124} |
| `chromeRendererMaxPssKb` | {'int': 124} |
| `chromeRendererPssKb` | {'int': 124} |
| `chromeRenderers` | {'int': 124} |
| `chromeTabs` | {'int': 124} |
| `chromeTabsProbedProfiles` | {'int': 124} |
| `chromeUtilityPssKb` | {'int': 124} |
| `desktopPssKb` | {'int': 124} |
| `hostPssKb` | {'int': 124} |
| `kind` | {'str': 124} |
| `memAvailableKb` | {'int': 124} |
| `memTotalKb` | {'int': 124} |
| `otherPssKb` | {'int': 124} |
| `processes` | {'int': 124} |
| `pssFallbackProcesses` | {'int': 124} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

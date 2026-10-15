# sandbox_telemetry_parse — 2026-10-16 00:27:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1128110 lines=2500
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2495 |
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
| `chromeBrowserPssKb` | {'int': 2495} |
| `chromeGpuPssKb` | {'int': 2495} |
| `chromeOtherPssKb` | {'int': 2495} |
| `chromeProcesses` | {'int': 2495} |
| `chromeProfiles` | {'int': 2495} |
| `chromeRendererMaxPssKb` | {'int': 2495} |
| `chromeRendererPssKb` | {'int': 2495} |
| `chromeRenderers` | {'int': 2495} |
| `chromeTabs` | {'int': 2495} |
| `chromeTabsProbedProfiles` | {'int': 2495} |
| `chromeUtilityPssKb` | {'int': 2495} |
| `desktopPssKb` | {'int': 2495} |
| `hostPssKb` | {'int': 2495} |
| `kind` | {'str': 2495} |
| `memAvailableKb` | {'int': 2495} |
| `memTotalKb` | {'int': 2495} |
| `otherPssKb` | {'int': 2495} |
| `processes` | {'int': 2495} |
| `pssFallbackProcesses` | {'int': 2495} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

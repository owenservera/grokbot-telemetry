# sandbox_telemetry_parse — 2026-10-15 20:09:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1033190 lines=2290
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2285 |
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
| `chromeBrowserPssKb` | {'int': 2285} |
| `chromeGpuPssKb` | {'int': 2285} |
| `chromeOtherPssKb` | {'int': 2285} |
| `chromeProcesses` | {'int': 2285} |
| `chromeProfiles` | {'int': 2285} |
| `chromeRendererMaxPssKb` | {'int': 2285} |
| `chromeRendererPssKb` | {'int': 2285} |
| `chromeRenderers` | {'int': 2285} |
| `chromeTabs` | {'int': 2285} |
| `chromeTabsProbedProfiles` | {'int': 2285} |
| `chromeUtilityPssKb` | {'int': 2285} |
| `desktopPssKb` | {'int': 2285} |
| `hostPssKb` | {'int': 2285} |
| `kind` | {'str': 2285} |
| `memAvailableKb` | {'int': 2285} |
| `memTotalKb` | {'int': 2285} |
| `otherPssKb` | {'int': 2285} |
| `processes` | {'int': 2285} |
| `pssFallbackProcesses` | {'int': 2285} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

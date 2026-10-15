# sandbox_telemetry_parse — 2026-10-15 17:53:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=982114 lines=2177
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2172 |
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
| `chromeBrowserPssKb` | {'int': 2172} |
| `chromeGpuPssKb` | {'int': 2172} |
| `chromeOtherPssKb` | {'int': 2172} |
| `chromeProcesses` | {'int': 2172} |
| `chromeProfiles` | {'int': 2172} |
| `chromeRendererMaxPssKb` | {'int': 2172} |
| `chromeRendererPssKb` | {'int': 2172} |
| `chromeRenderers` | {'int': 2172} |
| `chromeTabs` | {'int': 2172} |
| `chromeTabsProbedProfiles` | {'int': 2172} |
| `chromeUtilityPssKb` | {'int': 2172} |
| `desktopPssKb` | {'int': 2172} |
| `hostPssKb` | {'int': 2172} |
| `kind` | {'str': 2172} |
| `memAvailableKb` | {'int': 2172} |
| `memTotalKb` | {'int': 2172} |
| `otherPssKb` | {'int': 2172} |
| `processes` | {'int': 2172} |
| `pssFallbackProcesses` | {'int': 2172} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

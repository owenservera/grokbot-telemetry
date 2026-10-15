# sandbox_telemetry_parse — 2026-10-15 02:00:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=604694 lines=1342
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1337 |
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
| `chromeBrowserPssKb` | {'int': 1337} |
| `chromeGpuPssKb` | {'int': 1337} |
| `chromeOtherPssKb` | {'int': 1337} |
| `chromeProcesses` | {'int': 1337} |
| `chromeProfiles` | {'int': 1337} |
| `chromeRendererMaxPssKb` | {'int': 1337} |
| `chromeRendererPssKb` | {'int': 1337} |
| `chromeRenderers` | {'int': 1337} |
| `chromeTabs` | {'int': 1337} |
| `chromeTabsProbedProfiles` | {'int': 1337} |
| `chromeUtilityPssKb` | {'int': 1337} |
| `desktopPssKb` | {'int': 1337} |
| `hostPssKb` | {'int': 1337} |
| `kind` | {'str': 1337} |
| `memAvailableKb` | {'int': 1337} |
| `memTotalKb` | {'int': 1337} |
| `otherPssKb` | {'int': 1337} |
| `processes` | {'int': 1337} |
| `pssFallbackProcesses` | {'int': 1337} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

# sandbox_telemetry_parse — 2026-10-15 12:20:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=858266 lines=1903
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1898 |
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
| `chromeBrowserPssKb` | {'int': 1898} |
| `chromeGpuPssKb` | {'int': 1898} |
| `chromeOtherPssKb` | {'int': 1898} |
| `chromeProcesses` | {'int': 1898} |
| `chromeProfiles` | {'int': 1898} |
| `chromeRendererMaxPssKb` | {'int': 1898} |
| `chromeRendererPssKb` | {'int': 1898} |
| `chromeRenderers` | {'int': 1898} |
| `chromeTabs` | {'int': 1898} |
| `chromeTabsProbedProfiles` | {'int': 1898} |
| `chromeUtilityPssKb` | {'int': 1898} |
| `desktopPssKb` | {'int': 1898} |
| `hostPssKb` | {'int': 1898} |
| `kind` | {'str': 1898} |
| `memAvailableKb` | {'int': 1898} |
| `memTotalKb` | {'int': 1898} |
| `otherPssKb` | {'int': 1898} |
| `processes` | {'int': 1898} |
| `pssFallbackProcesses` | {'int': 1898} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

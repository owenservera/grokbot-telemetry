# sandbox_telemetry_parse — 2026-10-16 16:08:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=610294 lines=2281
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1508 |
| `memory_sample` | 764 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 764} |
| `chromeGpuPssKb` | {'int': 764} |
| `chromeOtherPssKb` | {'int': 764} |
| `chromeProcesses` | {'int': 764} |
| `chromeProfiles` | {'int': 764} |
| `chromeRendererMaxPssKb` | {'int': 764} |
| `chromeRendererPssKb` | {'int': 764} |
| `chromeRenderers` | {'int': 764} |
| `chromeTabs` | {'int': 764} |
| `chromeTabsProbedProfiles` | {'int': 764} |
| `chromeUtilityPssKb` | {'int': 764} |
| `desktopPssKb` | {'int': 764} |
| `hostPssKb` | {'int': 764} |
| `kind` | {'str': 764} |
| `memAvailableKb` | {'int': 764} |
| `memTotalKb` | {'int': 764} |
| `otherPssKb` | {'int': 764} |
| `processes` | {'int': 764} |
| `pssFallbackProcesses` | {'int': 764} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1505} |
| `display` | {'int': 1508} |
| `kind` | {'str': 1508} |
| `processes` | {'int': 1508} |
| `pssKb` | {'int': 1508} |
| `rendererMaxPssKb` | {'int': 1508} |
| `renderers` | {'int': 1508} |
| `tabs` | {'int': 1507} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

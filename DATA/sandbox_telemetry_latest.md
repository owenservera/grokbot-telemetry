# sandbox_telemetry_parse — 2026-10-16 18:35:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=724290 lines=2707
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1792 |
| `memory_sample` | 906 |
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
| `chromeBrowserPssKb` | {'int': 906} |
| `chromeGpuPssKb` | {'int': 906} |
| `chromeOtherPssKb` | {'int': 906} |
| `chromeProcesses` | {'int': 906} |
| `chromeProfiles` | {'int': 906} |
| `chromeRendererMaxPssKb` | {'int': 906} |
| `chromeRendererPssKb` | {'int': 906} |
| `chromeRenderers` | {'int': 906} |
| `chromeTabs` | {'int': 906} |
| `chromeTabsProbedProfiles` | {'int': 906} |
| `chromeUtilityPssKb` | {'int': 906} |
| `desktopPssKb` | {'int': 906} |
| `hostPssKb` | {'int': 906} |
| `kind` | {'str': 906} |
| `memAvailableKb` | {'int': 906} |
| `memTotalKb` | {'int': 906} |
| `otherPssKb` | {'int': 906} |
| `processes` | {'int': 906} |
| `pssFallbackProcesses` | {'int': 906} |

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
| `cpuMillicores` | {'int': 1789} |
| `display` | {'int': 1792} |
| `kind` | {'str': 1792} |
| `processes` | {'int': 1792} |
| `pssKb` | {'int': 1792} |
| `rendererMaxPssKb` | {'int': 1792} |
| `renderers` | {'int': 1792} |
| `tabs` | {'int': 1791} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

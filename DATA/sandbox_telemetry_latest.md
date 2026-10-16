# sandbox_telemetry_parse — 2026-10-16 20:00:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=786920 lines=2941
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1948 |
| `memory_sample` | 984 |
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
| `chromeBrowserPssKb` | {'int': 984} |
| `chromeGpuPssKb` | {'int': 984} |
| `chromeOtherPssKb` | {'int': 984} |
| `chromeProcesses` | {'int': 984} |
| `chromeProfiles` | {'int': 984} |
| `chromeRendererMaxPssKb` | {'int': 984} |
| `chromeRendererPssKb` | {'int': 984} |
| `chromeRenderers` | {'int': 984} |
| `chromeTabs` | {'int': 984} |
| `chromeTabsProbedProfiles` | {'int': 984} |
| `chromeUtilityPssKb` | {'int': 984} |
| `desktopPssKb` | {'int': 984} |
| `hostPssKb` | {'int': 984} |
| `kind` | {'str': 984} |
| `memAvailableKb` | {'int': 984} |
| `memTotalKb` | {'int': 984} |
| `otherPssKb` | {'int': 984} |
| `processes` | {'int': 984} |
| `pssFallbackProcesses` | {'int': 984} |

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
| `cpuMillicores` | {'int': 1945} |
| `display` | {'int': 1948} |
| `kind` | {'str': 1948} |
| `processes` | {'int': 1948} |
| `pssKb` | {'int': 1948} |
| `rendererMaxPssKb` | {'int': 1948} |
| `renderers` | {'int': 1948} |
| `tabs` | {'int': 1947} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

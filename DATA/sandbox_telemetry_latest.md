# sandbox_telemetry_parse — 2026-10-16 20:24:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=802981 lines=3001
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1988 |
| `memory_sample` | 1004 |
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
| `chromeBrowserPssKb` | {'int': 1004} |
| `chromeGpuPssKb` | {'int': 1004} |
| `chromeOtherPssKb` | {'int': 1004} |
| `chromeProcesses` | {'int': 1004} |
| `chromeProfiles` | {'int': 1004} |
| `chromeRendererMaxPssKb` | {'int': 1004} |
| `chromeRendererPssKb` | {'int': 1004} |
| `chromeRenderers` | {'int': 1004} |
| `chromeTabs` | {'int': 1004} |
| `chromeTabsProbedProfiles` | {'int': 1004} |
| `chromeUtilityPssKb` | {'int': 1004} |
| `desktopPssKb` | {'int': 1004} |
| `hostPssKb` | {'int': 1004} |
| `kind` | {'str': 1004} |
| `memAvailableKb` | {'int': 1004} |
| `memTotalKb` | {'int': 1004} |
| `otherPssKb` | {'int': 1004} |
| `processes` | {'int': 1004} |
| `pssFallbackProcesses` | {'int': 1004} |

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
| `cpuMillicores` | {'int': 1985} |
| `display` | {'int': 1988} |
| `kind` | {'str': 1988} |
| `processes` | {'int': 1988} |
| `pssKb` | {'int': 1988} |
| `rendererMaxPssKb` | {'int': 1988} |
| `renderers` | {'int': 1988} |
| `tabs` | {'int': 1987} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects

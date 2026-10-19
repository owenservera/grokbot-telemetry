# sandbox_telemetry_parse — 2026-10-19 21:34:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1659409 lines=5173
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2723 |
| `chrome_profile_sample` | 2440 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2723} |
| `chromeGpuPssKb` | {'int': 2723} |
| `chromeOtherPssKb` | {'int': 2723} |
| `chromeProcesses` | {'int': 2723} |
| `chromeProfiles` | {'int': 2723} |
| `chromeRendererMaxPssKb` | {'int': 2723} |
| `chromeRendererPssKb` | {'int': 2723} |
| `chromeRenderers` | {'int': 2723} |
| `chromeTabs` | {'int': 2723} |
| `chromeTabsProbedProfiles` | {'int': 2723} |
| `chromeUtilityPssKb` | {'int': 2723} |
| `desktopPssKb` | {'int': 2723} |
| `hostPssKb` | {'int': 2723} |
| `kind` | {'str': 2723} |
| `memAvailableKb` | {'int': 2723} |
| `memTotalKb` | {'int': 2723} |
| `otherPssKb` | {'int': 2723} |
| `processes` | {'int': 2723} |
| `pssFallbackProcesses` | {'int': 2723} |

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
| `cpuMillicores` | {'int': 2437} |
| `display` | {'int': 2440} |
| `kind` | {'str': 2440} |
| `processes` | {'int': 2440} |
| `pssKb` | {'int': 2440} |
| `rendererMaxPssKb` | {'int': 2440} |
| `renderers` | {'int': 2440} |
| `tabs` | {'int': 2439} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
